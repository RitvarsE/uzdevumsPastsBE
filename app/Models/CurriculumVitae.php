<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class CurriculumVitae extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
    ];

    public function basics(): HasMany
    {
        return $this->hasMany(Basic::class);
    }

    public function educations(): HasMany
    {
        return $this->hasMany(Education::class);
    }

    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class);
    }

    public function others(): HasMany
    {
        return $this->hasMany(Other::class);
    }

    public function skills(): HasMany
    {
        return $this->hasMany(Skill::class);
    }
}
