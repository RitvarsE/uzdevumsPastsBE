<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Education extends Model
{
    use HasFactory;
    protected $fillable = [
        'curriculum_vitae_id',
        'school',
        'faculty',
        'fieldOfStudy',
        'degree',
        'started_at',
        'finished_at',
        'status'
    ];
    public function cv(): BelongsTo
    {
        return $this->belongsTo('App\Models\CurriculumVitae');
    }
}
