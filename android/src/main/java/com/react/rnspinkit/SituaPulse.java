package com.react.rnspinkit;


import android.animation.ValueAnimator;

import com.github.ybq.android.spinkit.animation.SpriteAnimatorBuilder;
import com.github.ybq.android.spinkit.animation.interpolator.KeyFrameInterpolator;

import com.react.rnspinkit.SituaRingSprite;
import com.github.ybq.android.spinkit.sprite.Sprite;
import com.github.ybq.android.spinkit.sprite.RingSprite;

public class SituaPulse extends SituaRingSprite {

    public SituaPulse() {
        setScale(0f);
    }

    @Override
    public ValueAnimator onCreateAnimation() {
        float fractionsOpacity[] = new float[]{0f, 0.5f, 1f};
        float fractionsScale[] = new float[]{0f, 1f};
        return new SpriteAnimatorBuilder(this).
                scale(fractionsScale, 0.2f, 0.9f).
                alpha(fractionsOpacity, 0, 255, 0).
                duration(1000).
                easeInOut(fractionsOpacity).
                build();
    }

}
