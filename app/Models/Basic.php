<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Basic extends Model
{
    use HasFactory;
    protected $fillable = [
        'curriculum_vitae_id',
        'name',
        'surname',
        'email',
        'number'
    ];
    public function cv(): BelongsTo
    {
        return $this->belongsTo('App\Models\CurriculumVitae');
    }
}
