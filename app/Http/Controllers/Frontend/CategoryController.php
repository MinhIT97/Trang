<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Education\Course;
use App\Models\Education\Tag;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function getCourseByCategory($id, $request)
    {
        $category = Category::find($id);
        if (!$category) return abort(404);

        $categoryChild = Category::where('c_parent_id', $id)->get();

        $courses = Course::with('teacher:id,t_name,t_avatar,t_slug,t_job')
            ->where('c_category_id', $id)
            ->where('c_status', Course::STATUS_DEFAULT);
        if ($lv = $request->level) $courses->where('c_level', $lv);
        if ($time = $request->time) {
            if ($time == 1) {
                $courses->where('c_total_time', '<=', 3);
            } else {
                $courses->where('c_total_time', '>', 3);
            }
        }


        $level = (new Course())->level;

        $courses = $courses
            ->orderByDesc('id')
            ->paginate(12);

        // từ khoá nổi bật category
        $tags = Tag::where([
            't_status'     => 1,
            't_position_2' => 1
        ])->get();


        $viewData = [
            'courses'       => $courses,
            'category'      => $category,
            'tags'          => $tags,
            'level'         => $level,
            'query'         => $request->query(),
            'categoryChild' => $categoryChild
        ];

        return view('pages.category.index', $viewData);
    }

    public function index(Request $request)
    {
        $courses = Course::with('teacher:id,t_name,t_avatar,t_slug,t_job')
            ->where('c_status', Course::STATUS_DEFAULT);

        if ($lv = $request->level) $courses->where('c_level', $lv);
        if ($time = $request->time) {
            if ($time == 1) {
                $courses->where('c_total_time', '<=', 3);
            } else {
                $courses->where('c_total_time', '>', 3);
            }
        }

        $courses = $courses->orderByDesc('id')
            ->paginate(12);

        $level = (new Course())->level;

        $viewData = [
            'level'   => $level,
            'courses' => $courses
        ];

        return view('pages.category.index', $viewData);
    }
}
