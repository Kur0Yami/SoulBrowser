package com.mycompany.app.editor.core;

import android.graphics.Bitmap;
import android.media.effect.Effect;
import android.media.effect.EffectContext;
import android.media.effect.EffectFactory;
import android.opengl.GLES20;
import android.opengl.GLException;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.support.v4.media.a;
import com.mycompany.app.editor.core.PhotoEditorView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class PhotoEffectView extends GLSurfaceView implements GLSurfaceView.Renderer {
    public static final String[] o = {"ORIGINAL", "AUTO FIX", "BRIGHTNESS", "CONTRAST", "CROSS PROCESS", "DOCUMENTARY", "DUO TONE", "FILL LIGHT", "FISH EYE", "GRAIN", "GRAY SCALE", "LOMOISH", "NEGATIVE", "POSTERIZE", "SATURATE", "SEPIA", "SHARPEN", "TEMPERATURE", "TINT", "VIGNETTE", "FLIP HORIZONTAL", "FLIP VERTICAL", "ROTATE"};
    public static final int[] p = {R.drawable.effect_original, R.drawable.effect_auto_fix, R.drawable.effect_brightness, R.drawable.effect_contrast, R.drawable.effect_cross_process, R.drawable.effect_documentary, R.drawable.effect_duo_tone, R.drawable.effect_fill_light, R.drawable.effect_fish_eye, R.drawable.effect_grain, R.drawable.effect_gray_scale, R.drawable.effect_lomoish, R.drawable.effect_negative, R.drawable.effect_posterize, R.drawable.effect_saturate, R.drawable.effect_sepia, R.drawable.effect_sharpen, R.drawable.effect_temperature, R.drawable.effect_tint, R.drawable.effect_vignette, R.drawable.effect_flip_horizontal, R.drawable.effect_flip_vertical, R.drawable.effect_rotate};

    /* renamed from: c, reason: collision with root package name */
    public TextureRenderer f15675c;
    public int[] f;
    public boolean g;
    public Bitmap h;
    public int i;
    public int j;
    public EffectContext k;
    public Effect l;
    public int m;
    public PhotoSaveListener n;

    /* loaded from: classes3.dex */
    public interface PhotoSaveListener {
        void a(Bitmap bitmap);

        void w();
    }

    public final void a() {
        Float valueOf = Float.valueOf(0.5f);
        Effect effect = this.l;
        EffectFactory effectFactory = null;
        if (effect != null) {
            effect.release();
            this.l = null;
        }
        int i = this.m;
        if (i != 0 && this.i != 0 && this.j != 0) {
            if (i != 0) {
                if (this.k == null) {
                    this.k = EffectContext.createWithCurrentGlContext();
                }
                effectFactory = this.k.getFactory();
            }
            switch (this.m) {
                case 1:
                    Effect createEffect = effectFactory.createEffect("android.media.effect.effects.AutoFixEffect");
                    this.l = createEffect;
                    createEffect.setParameter("scale", valueOf);
                    break;
                case 2:
                    Effect createEffect2 = effectFactory.createEffect("android.media.effect.effects.BrightnessEffect");
                    this.l = createEffect2;
                    createEffect2.setParameter("brightness", Float.valueOf(2.0f));
                    break;
                case 3:
                    Effect createEffect3 = effectFactory.createEffect("android.media.effect.effects.ContrastEffect");
                    this.l = createEffect3;
                    createEffect3.setParameter("contrast", Float.valueOf(1.4f));
                    break;
                case 4:
                    this.l = effectFactory.createEffect("android.media.effect.effects.CrossProcessEffect");
                    break;
                case 5:
                    this.l = effectFactory.createEffect("android.media.effect.effects.DocumentaryEffect");
                    break;
                case 6:
                    Effect createEffect4 = effectFactory.createEffect("android.media.effect.effects.DuotoneEffect");
                    this.l = createEffect4;
                    createEffect4.setParameter("first_color", -256);
                    this.l.setParameter("second_color", -12303292);
                    break;
                case 7:
                    Effect createEffect5 = effectFactory.createEffect("android.media.effect.effects.FillLightEffect");
                    this.l = createEffect5;
                    createEffect5.setParameter("strength", Float.valueOf(0.8f));
                    break;
                case 8:
                    Effect createEffect6 = effectFactory.createEffect("android.media.effect.effects.FisheyeEffect");
                    this.l = createEffect6;
                    createEffect6.setParameter("scale", valueOf);
                    break;
                case 9:
                    Effect createEffect7 = effectFactory.createEffect("android.media.effect.effects.GrainEffect");
                    this.l = createEffect7;
                    createEffect7.setParameter("strength", Float.valueOf(1.0f));
                    break;
                case 10:
                    this.l = effectFactory.createEffect("android.media.effect.effects.GrayscaleEffect");
                    break;
                case 11:
                    this.l = effectFactory.createEffect("android.media.effect.effects.LomoishEffect");
                    break;
                case 12:
                    this.l = effectFactory.createEffect("android.media.effect.effects.NegativeEffect");
                    break;
                case 13:
                    this.l = effectFactory.createEffect("android.media.effect.effects.PosterizeEffect");
                    break;
                case 14:
                    Effect createEffect8 = effectFactory.createEffect("android.media.effect.effects.SaturateEffect");
                    this.l = createEffect8;
                    createEffect8.setParameter("scale", valueOf);
                    break;
                case 15:
                    this.l = effectFactory.createEffect("android.media.effect.effects.SepiaEffect");
                    break;
                case 16:
                    this.l = effectFactory.createEffect("android.media.effect.effects.SharpenEffect");
                    break;
                case 17:
                    Effect createEffect9 = effectFactory.createEffect("android.media.effect.effects.ColorTemperatureEffect");
                    this.l = createEffect9;
                    createEffect9.setParameter("scale", Float.valueOf(0.9f));
                    break;
                case 18:
                    Effect createEffect10 = effectFactory.createEffect("android.media.effect.effects.TintEffect");
                    this.l = createEffect10;
                    createEffect10.setParameter("tint", -65281);
                    break;
                case 19:
                    Effect createEffect11 = effectFactory.createEffect("android.media.effect.effects.VignetteEffect");
                    this.l = createEffect11;
                    createEffect11.setParameter("scale", valueOf);
                    break;
                case 20:
                    Effect createEffect12 = effectFactory.createEffect("android.media.effect.effects.FlipEffect");
                    this.l = createEffect12;
                    createEffect12.setParameter("horizontal", Boolean.TRUE);
                    break;
                case 21:
                    Effect createEffect13 = effectFactory.createEffect("android.media.effect.effects.FlipEffect");
                    this.l = createEffect13;
                    createEffect13.setParameter("vertical", Boolean.TRUE);
                    break;
                case 22:
                    Effect createEffect14 = effectFactory.createEffect("android.media.effect.effects.RotateEffect");
                    this.l = createEffect14;
                    createEffect14.setParameter("angle", 180);
                    break;
            }
            Effect effect2 = this.l;
            if (effect2 != null) {
                int[] iArr = this.f;
                effect2.apply(iArr[0], this.i, this.j, iArr[1]);
            }
            TextureRenderer textureRenderer = this.f15675c;
            int i2 = this.f[1];
            textureRenderer.getClass();
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glUseProgram(textureRenderer.f15687a);
            GLToolbox.a("glUseProgram");
            GLES20.glViewport(0, 0, textureRenderer.g, textureRenderer.h);
            GLToolbox.a("glViewport");
            GLES20.glDisable(3042);
            GLES20.glVertexAttribPointer(textureRenderer.f15688c, 2, 5126, false, 0, (Buffer) textureRenderer.e);
            GLES20.glEnableVertexAttribArray(textureRenderer.f15688c);
            GLES20.glVertexAttribPointer(textureRenderer.d, 2, 5126, false, 0, (Buffer) textureRenderer.f);
            GLES20.glEnableVertexAttribArray(textureRenderer.d);
            GLToolbox.a("vertex attribute setup");
            GLES20.glActiveTexture(33984);
            GLToolbox.a("glActiveTexture");
            GLES20.glBindTexture(3553, i2);
            GLToolbox.a("glBindTexture");
            GLES20.glUniform1i(textureRenderer.b, 0);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
        }
    }

    public final void b() {
        int b;
        int glCreateProgram;
        if (this.f15675c != null && this.f != null && MainUtil.f6(this.h) && this.m != 0 && this.i != 0 && this.j != 0) {
            TextureRenderer textureRenderer = this.f15675c;
            textureRenderer.getClass();
            int b2 = GLToolbox.b(35633, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n");
            if (b2 == 0 || (b = GLToolbox.b(35632, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n")) == 0) {
                glCreateProgram = 0;
            } else {
                glCreateProgram = GLES20.glCreateProgram();
                if (glCreateProgram != 0) {
                    GLES20.glAttachShader(glCreateProgram, b2);
                    GLToolbox.a("glAttachShader");
                    GLES20.glAttachShader(glCreateProgram, b);
                    GLToolbox.a("glAttachShader");
                    GLES20.glLinkProgram(glCreateProgram);
                    int[] iArr = new int[1];
                    GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
                    if (iArr[0] != 1) {
                        String glGetProgramInfoLog = GLES20.glGetProgramInfoLog(glCreateProgram);
                        GLES20.glDeleteProgram(glCreateProgram);
                        throw new RuntimeException(a.C("Could not link program: ", glGetProgramInfoLog));
                    }
                }
            }
            textureRenderer.f15687a = glCreateProgram;
            textureRenderer.b = GLES20.glGetUniformLocation(glCreateProgram, "tex_sampler");
            textureRenderer.f15688c = GLES20.glGetAttribLocation(textureRenderer.f15687a, "a_texcoord");
            textureRenderer.d = GLES20.glGetAttribLocation(textureRenderer.f15687a, "a_position");
            FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            textureRenderer.e = asFloatBuffer;
            asFloatBuffer.put(TextureRenderer.k).position(0);
            FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            textureRenderer.f = asFloatBuffer2;
            asFloatBuffer2.put(TextureRenderer.l).position(0);
            TextureRenderer textureRenderer2 = this.f15675c;
            int i = this.i;
            int i2 = this.j;
            textureRenderer2.i = i;
            textureRenderer2.j = i2;
            textureRenderer2.a();
            GLES20.glGenTextures(2, this.f, 0);
            GLES20.glBindTexture(3553, this.f[0]);
            GLUtils.texImage2D(3553, 0, this.h, 0);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        Bitmap bitmap;
        if (this.f15675c != null && this.f != null) {
            try {
                if (this.g) {
                    this.g = false;
                    b();
                }
                a();
            } catch (Exception unused) {
            }
            PhotoSaveListener photoSaveListener = this.n;
            if (photoSaveListener != null) {
                try {
                    int width = getWidth();
                    int height = getHeight();
                    int i = width * height;
                    int[] iArr = new int[i];
                    int[] iArr2 = new int[i];
                    IntBuffer wrap = IntBuffer.wrap(iArr);
                    wrap.position(0);
                    gl10.glReadPixels(0, 0, width, height, 6408, 5121, wrap);
                    for (int i2 = 0; i2 < height; i2++) {
                        int i3 = i2 * width;
                        int i4 = ((height - i2) - 1) * width;
                        for (int i5 = 0; i5 < width; i5++) {
                            int i6 = iArr[i3 + i5];
                            iArr2[i4 + i5] = ((i6 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) | ((i6 << 16) & 16711680) | ((-16711936) & i6);
                        }
                    }
                    bitmap = Bitmap.createBitmap(iArr2, width, height, Bitmap.Config.ARGB_8888);
                } catch (GLException | Exception | OutOfMemoryError unused2) {
                    bitmap = null;
                }
                ((PhotoEditorView.AnonymousClass1.C01281) photoSaveListener).a(bitmap);
                this.n = null;
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        TextureRenderer textureRenderer = this.f15675c;
        if (textureRenderer != null) {
            textureRenderer.g = i;
            textureRenderer.h = i2;
            textureRenderer.a();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
    }

    public void setEffectType(int i) {
        if (this.m == i) {
            return;
        }
        this.m = i;
        requestRender();
    }

    public void setImageBitmap(Bitmap bitmap) {
        if (!MainUtil.f6(bitmap)) {
            return;
        }
        this.h = bitmap;
        this.i = bitmap.getWidth();
        this.j = this.h.getHeight();
        this.g = true;
        requestRender();
    }
}
