<?php


namespace App\Http\Services;


use App\Models\Basic;
use App\Models\CurriculumVitae;
use App\Models\Education;
use App\Models\Job;
use App\Models\Other;
use App\Models\Skill;
use Illuminate\Http\Request;

class CurriculumVitaeService
{
    public function getAll()
    {
        return CurriculumVitae::all();
    }

    public function delete(int $id)
    {
        return CurriculumVitae::destroy($id);
    }

    public function deleteSkill(int $id)
    {
        return Skill::destroy($id);
    }

    public function deleteJob(int $id)
    {
        return Job::destroy($id);
    }

    public function deleteOther(int $id)
    {
        return Other::destroy($id);
    }

    public function deleteEducation(int $id)
    {
        return Education::destroy($id);
    }

    public function addCV(Request $request)
    {
        return CurriculumVitae::create([
            'title' => $request->get('title')
        ]);
    }

    public function get(int $id)
    {
        return CurriculumVitae::with(['basics', 'jobs', 'educations', 'skills', 'others'])->find($id);
    }

    public function updateBasic(Request $request, int $id)
    {
        $basics = $request->get('basics')[0];
        return Basic::find($id)->update([
            'name' => $basics['name'],
            'surname' => $basics['surname'],
            'email' => $basics['email'],
            'number' => $basics['number']
        ]);
    }

    public function getBasic(int $id)
    {
        return Basic::find($id);
    }

    public function getJob(int $id)
    {
        return Job::find($id);
    }

    public function getSkill(int $id)
    {
        return Skill::find($id);
    }

    public function getOther(int $id)
    {
        return Other::find($id);
    }

    public function getEducation(int $id)
    {
        return Education::find($id);
    }

    public function updateJob(Request $request, int $id)
    {
        $job = $request->get('jobs')[0];
        return Job::find($id)->update([
            'job' => $job['job'],
            'title' => $job['title'],
            'load' => $job['load'],
            'started_at' => $job['started_at'],
            'finished_at' => $job['finished_at'] ?? null
        ]);
    }

    public function updateSkill(Request $request, int $id)
    {
        $skill = $request->get('skills')[0];
        return Skill::find($id)->update([
            'description' => $skill['description']
        ]);
    }

    public function updateEducation(Request $request, int $id)
    {
        $education = $request->get('educations')[0];
        return Education::find($id)->update([
            'school' => $education['school'],
            'faculty' => $education['faculty'] ?? null,
            'fieldOfStudy' => $education['fieldOfStudy'] ?? null,
            'degree' => $education['degree'] ?? null,
            'started_at' => $education['started_at'],
            'finished_at' => $education['finished_at'] ?? null,
            'status' => $education['status']
        ]);
    }

    public function updateOther(Request $request, int $id)
    {
        $other = $request->get('others')[0];
        return Other::create([
            'title' => $other['title'],
            'description' => $other['description']
        ]);
    }

    public function addBasic(Request $request, int $id)
    {
        $basics = $request->get('basics')[0];
        return Basic::create([
            'curriculum_vitae_id' => $id,
            'name' => $basics['name'],
            'surname' => $basics['surname'],
            'email' => $basics['email'],
            'number' => $basics['number']
        ]);
    }

    public function addJob(Request $request, int $id)
    {
        $job = $request->get('jobs')[0];
        return Job::create([
            'curriculum_vitae_id' => $id,
            'job' => $job['job'],
            'title' => $job['title'],
            'load' => $job['load'],
            'started_at' => $job['started_at'],
            'finished_at' => $job['finished_at'] ?? null
        ]);
    }

    public function addOther(Request $request, int $id)
    {
        $other = $request->get('others')[0];
        return Other::create([
            'curriculum_vitae_id' => $id,
            'title' => $other['title'],
            'description' => $other['description']
        ]);
    }

    public function addEducation(Request $request, int $id)
    {
        $education = $request->get('educations')[0];
        return Education::create([
            'curriculum_vitae_id' => $id,
            'school' => $education['school'],
            'faculty' => $education['faculty'] ?? null,
            'fieldOfStudy' => $education['fieldOfStudy'] ?? null,
            'degree' => isset($education['degree']) ?: null,
            'started_at' => $education['started_at'],
            'finished_at' => $education['finished_at'] ?? null,
            'status' => $education['status']
        ]);
    }

    public function addSkill(Request $request, int $id)
    {
        $skill = $request->get('skills')[0];
        return Skill::create([
            'curriculum_vitae_id' => $id,
            'description' => $skill['description']
        ]);
    }
}
