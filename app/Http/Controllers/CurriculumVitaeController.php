<?php

namespace App\Http\Controllers;

use App\Http\Services\CurriculumVitaeService;
use Illuminate\Http\Request;

class CurriculumVitaeController extends Controller
{
    /**
     * @var CurriculumVitaeService
     */
    private CurriculumVitaeService $service;

    public function __construct(CurriculumVitaeService $service)
    {
        $this->service = $service;
    }

    public function getAll()
    {
        return json_encode($this->service->getAll());
    }

    public function delete($id): int
    {
        return $this->service->delete($id);
    }


    public function addCV(Request $request)
    {
        return $this->service->addCV($request);
    }

    public function get(int $id)
    {
        return json_encode($this->service->get($id));
    }

    public function getBasic(int $id)
    {
        return json_encode($this->service->getBasic($id));
    }

    public function updateBasic(Request $request, int $id)
    {
        return $this->service->updateBasic($request, $id);
    }
    public function getJob(int $id)
    {
        return json_encode($this->service->getJob($id));
    }

    public function updateJob(Request $request, int $id)
    {
        return $this->service->updateJob($request, $id);
    }
    public function getOther(int $id)
    {
        return json_encode($this->service->getOther($id));
    }
    public function getSkill(int $id)
    {
        return json_encode($this->service->getSkill($id));
    }
    public function getEducation(int $id)
    {
        return json_encode($this->service->getEducation($id));
    }
    public function updateSkill(Request $request, int $id)
    {
        return $this->service->updateSkill($request, $id);
    }
    public function updateOther(Request $request, int $id)
    {
        return $this->service->updateOther($request, $id);
    }
    public function updateEducation(Request $request, int $id)
    {
        return $this->service->updateEducation($request, $id);
    }
    public function deleteOther($id): int
    {
        return $this->service->deleteOther($id);
    }
    public function deleteSkill($id): int
    {
        return $this->service->deleteSkill($id);
    }
    public function deleteJob($id): int
    {
        return $this->service->deleteJob($id);
    }
    public function deleteEducation($id): int
    {
        return $this->service->deleteEducation($id);
    }
    public function addBasic(Request $request, int $id)
    {
        return $this->service->addBasic($request, $id);
    }
    public function addEducation(Request $request, int $id)
    {
        return $this->service->addEducation($request, $id);
    }
    public function addJob(Request $request, int $id)
    {
        return $this->service->addJob($request, $id);
    }
    public function addSkill(Request $request, int $id)
    {
        return $this->service->addSkill($request, $id);
    }
    public function addOther(Request $request, int $id)
    {
        return $this->service->addOther($request, $id);
    }
}
