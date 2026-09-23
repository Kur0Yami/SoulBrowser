.class final Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionDrawable"
.end annotation


# instance fields
.field public final A:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field public B:Lcom/google/android/material/transition/platform/FadeModeResult;

.field public C:Lcom/google/android/material/transition/platform/FitModeResult;

.field public D:Landroid/graphics/RectF;

.field public E:F

.field public F:F

.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/RectF;

.field public final c:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final d:F

.field public final e:Landroid/view/View;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final h:F

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Lcom/google/android/material/transition/platform/MaskEvaluator;

.field public final o:Landroid/graphics/PathMeasure;

.field public final p:F

.field public final q:[F

.field public final r:Z

.field public final s:F

.field public final t:F

.field public final u:Landroid/graphics/RectF;

.field public final v:Landroid/graphics/RectF;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/RectF;

.field public final y:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field public final z:Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# direct methods
.method public constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)V
    .locals 9

    move-object/from16 v0, p7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->i:Landroid/graphics/Paint;

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->l:Landroid/graphics/Paint;

    .line 6
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    .line 7
    new-instance v5, Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-direct {v5}, Lcom/google/android/material/transition/platform/MaskEvaluator;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/platform/MaskEvaluator;

    const/4 v5, 0x2

    .line 8
    new-array v5, v5, [F

    iput-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->q:[F

    .line 9
    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 10
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 11
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->a:Landroid/view/View;

    .line 13
    iput-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->b:Landroid/graphics/RectF;

    .line 14
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 15
    iput p5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->d:F

    .line 16
    iput-object p6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->e:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->f:Landroid/graphics/RectF;

    move-object/from16 p4, p8

    .line 18
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 p4, p9

    .line 19
    iput p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->h:F

    move/from16 p4, p10

    .line 20
    iput-boolean p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->r:Z

    move-object/from16 p4, p11

    .line 21
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->z:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-object/from16 p4, p12

    .line 22
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->A:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 p4, p13

    .line 23
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->y:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "window"

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 25
    new-instance p4, Landroid/util/DisplayMetrics;

    invoke-direct {p4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    iget p2, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->s:F

    .line 28
    iget p2, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->t:F

    const/4 p2, 0x0

    .line 29
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v6, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->o(Landroid/content/res/ColorStateList;)V

    .line 33
    invoke-virtual {v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q()V

    .line 34
    iput-boolean p2, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->B:Z

    .line 35
    invoke-virtual {v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p()V

    .line 36
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->u:Landroid/graphics/RectF;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->v:Landroid/graphics/RectF;

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    .line 39
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->x:Landroid/graphics/RectF;

    .line 40
    new-instance p4, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {p4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 42
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p4, v2, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 43
    new-instance p4, Landroid/graphics/PathMeasure;

    invoke-direct {p4, p1, p2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->o:Landroid/graphics/PathMeasure;

    .line 44
    invoke-virtual {p4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->p:F

    .line 45
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    aput p1, v5, p2

    const/4 p1, 0x1

    .line 46
    iget p2, p3, Landroid/graphics/RectF;->top:F

    aput p2, v5, p1

    .line 47
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    sget-object p1, Lcom/google/android/material/transition/platform/TransitionUtils;->a:Landroid/graphics/RectF;

    .line 49
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 p1, 0x0

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move p6, p1

    move-object/from16 p9, p3

    move p3, p4

    move p4, v0

    move p5, v1

    move/from16 p7, v2

    move/from16 p8, v3

    invoke-direct/range {p2 .. p9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 50
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 51
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 52
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->d(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 17
    .line 18
    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->b:F

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 21
    .line 22
    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->b:I

    .line 23
    .line 24
    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;

    .line 25
    .line 26
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 27
    .line 28
    .line 29
    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->u:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 17
    .line 18
    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->a:F

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 21
    .line 22
    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->a:I

    .line 23
    .line 24
    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;

    .line 25
    .line 26
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 27
    .line 28
    .line 29
    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final d(F)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iput v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->F:F

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->r:Z

    .line 8
    .line 9
    const/high16 v3, 0x437f0000    # 255.0f

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v9, v3, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->c(FFF)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v3, v9, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->c(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    float-to-int v1, v1

    .line 24
    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->p:F

    .line 30
    .line 31
    mul-float v3, v1, v2

    .line 32
    .line 33
    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->o:Landroid/graphics/PathMeasure;

    .line 34
    .line 35
    iget-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->q:[F

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aget v7, v5, v3

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    aget v10, v5, v8

    .line 46
    .line 47
    const/high16 v11, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float v12, v2, v11

    .line 50
    .line 51
    if-gtz v12, :cond_2

    .line 52
    .line 53
    cmpg-float v13, v2, v9

    .line 54
    .line 55
    if-gez v13, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    move v12, v10

    .line 59
    move v10, v7

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    :goto_2
    if-lez v12, :cond_3

    .line 62
    .line 63
    sub-float v12, v2, v11

    .line 64
    .line 65
    const v13, 0x3c23d700    # 0.00999999f

    .line 66
    .line 67
    .line 68
    div-float/2addr v12, v13

    .line 69
    const v13, 0x3f7d70a4    # 0.99f

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const v13, 0x3c23d70a    # 0.01f

    .line 74
    .line 75
    .line 76
    div-float v12, v2, v13

    .line 77
    .line 78
    const/high16 v14, -0x40800000    # -1.0f

    .line 79
    .line 80
    mul-float/2addr v12, v14

    .line 81
    :goto_3
    mul-float/2addr v1, v13

    .line 82
    invoke-virtual {v4, v1, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 83
    .line 84
    .line 85
    aget v1, v5, v3

    .line 86
    .line 87
    aget v3, v5, v8

    .line 88
    .line 89
    invoke-static {v7, v1, v12, v7}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-static {v10, v3, v12, v10}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    goto :goto_1

    .line 98
    :goto_4
    iget-object v13, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->y:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 99
    .line 100
    iget-object v1, v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 101
    .line 102
    iget-object v14, v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 103
    .line 104
    iget-object v15, v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 105
    .line 106
    iget v3, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 107
    .line 108
    iget-object v1, v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 109
    .line 110
    iget v4, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 111
    .line 112
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->b:Landroid/graphics/RectF;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->f:Landroid/graphics/RectF;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->A:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 133
    .line 134
    invoke-interface/range {v1 .. v8}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->a(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 139
    .line 140
    iget v2, v1, Lcom/google/android/material/transition/platform/FitModeResult;->c:F

    .line 141
    .line 142
    const/high16 v7, 0x40000000    # 2.0f

    .line 143
    .line 144
    div-float/2addr v2, v7

    .line 145
    sub-float v3, v10, v2

    .line 146
    .line 147
    add-float/2addr v2, v10

    .line 148
    iget v1, v1, Lcom/google/android/material/transition/platform/FitModeResult;->d:F

    .line 149
    .line 150
    add-float/2addr v1, v12

    .line 151
    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->u:Landroid/graphics/RectF;

    .line 152
    .line 153
    invoke-virtual {v8, v3, v12, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 157
    .line 158
    iget v2, v1, Lcom/google/android/material/transition/platform/FitModeResult;->e:F

    .line 159
    .line 160
    div-float/2addr v2, v7

    .line 161
    sub-float v3, v10, v2

    .line 162
    .line 163
    add-float/2addr v2, v10

    .line 164
    iget v1, v1, Lcom/google/android/material/transition/platform/FitModeResult;->f:F

    .line 165
    .line 166
    add-float/2addr v1, v12

    .line 167
    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->w:Landroid/graphics/RectF;

    .line 168
    .line 169
    invoke-virtual {v4, v3, v12, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    .line 171
    .line 172
    iget-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->v:Landroid/graphics/RectF;

    .line 173
    .line 174
    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 175
    .line 176
    .line 177
    iget-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->x:Landroid/graphics/RectF;

    .line 178
    .line 179
    invoke-virtual {v12, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 180
    .line 181
    .line 182
    iget v3, v15, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 183
    .line 184
    iget v4, v15, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 185
    .line 186
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 187
    .line 188
    iget-object v15, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->A:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 189
    .line 190
    invoke-interface {v15, v1}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->b(Lcom/google/android/material/transition/platform/FitModeResult;)Z

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    if-eqz v16, :cond_4

    .line 195
    .line 196
    move-object v1, v10

    .line 197
    goto :goto_5

    .line 198
    :cond_4
    move-object v1, v12

    .line 199
    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    move-object v5, v1

    .line 203
    const/4 v1, 0x0

    .line 204
    move/from16 v23, v7

    .line 205
    .line 206
    move-object v7, v5

    .line 207
    move/from16 v5, p1

    .line 208
    .line 209
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils;->d(FFFFFZ)F

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v16, :cond_5

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_5
    sub-float v1, v11, v1

    .line 217
    .line 218
    :goto_6
    iget-object v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->C:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 219
    .line 220
    invoke-interface {v15, v7, v1, v2}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->c(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V

    .line 221
    .line 222
    .line 223
    new-instance v1, Landroid/graphics/RectF;

    .line 224
    .line 225
    iget v2, v10, Landroid/graphics/RectF;->left:F

    .line 226
    .line 227
    iget v3, v12, Landroid/graphics/RectF;->left:F

    .line 228
    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    iget v3, v10, Landroid/graphics/RectF;->top:F

    .line 234
    .line 235
    iget v4, v12, Landroid/graphics/RectF;->top:F

    .line 236
    .line 237
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iget v4, v10, Landroid/graphics/RectF;->right:F

    .line 242
    .line 243
    iget v5, v12, Landroid/graphics/RectF;->right:F

    .line 244
    .line 245
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    .line 250
    .line 251
    iget v6, v12, Landroid/graphics/RectF;->bottom:F

    .line 252
    .line 253
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    .line 259
    .line 260
    iput-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->D:Landroid/graphics/RectF;

    .line 261
    .line 262
    iget-object v1, v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 263
    .line 264
    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 265
    .line 266
    iget-object v13, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->c:Landroid/graphics/Path;

    .line 267
    .line 268
    iget-object v15, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->b:Landroid/graphics/Path;

    .line 269
    .line 270
    iget-object v2, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 271
    .line 272
    iget v4, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 273
    .line 274
    iget v5, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 275
    .line 276
    cmpg-float v1, p1, v4

    .line 277
    .line 278
    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 279
    .line 280
    if-gez v1, :cond_6

    .line 281
    .line 282
    move-object/from16 v16, v2

    .line 283
    .line 284
    :goto_7
    move/from16 v24, v11

    .line 285
    .line 286
    move-object v4, v12

    .line 287
    move/from16 v2, p1

    .line 288
    .line 289
    goto/16 :goto_a

    .line 290
    .line 291
    :cond_6
    cmpl-float v1, p1, v5

    .line 292
    .line 293
    iget-object v6, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->g:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 294
    .line 295
    if-lez v1, :cond_7

    .line 296
    .line 297
    move-object/from16 v16, v2

    .line 298
    .line 299
    move-object v3, v6

    .line 300
    goto :goto_7

    .line 301
    :cond_7
    new-instance v1, Lcom/google/android/material/transition/platform/TransitionUtils$1;

    .line 302
    .line 303
    move-object/from16 v16, v2

    .line 304
    .line 305
    move-object v2, v8

    .line 306
    move-object v8, v3

    .line 307
    move-object v3, v12

    .line 308
    move-object v12, v6

    .line 309
    move/from16 v6, p1

    .line 310
    .line 311
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils$1;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 312
    .line 313
    .line 314
    move-object v4, v3

    .line 315
    move-object v3, v2

    .line 316
    move v2, v6

    .line 317
    iget-object v5, v8, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 318
    .line 319
    iget-object v6, v8, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    .line 320
    .line 321
    move/from16 v17, v9

    .line 322
    .line 323
    iget-object v9, v8, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    .line 324
    .line 325
    move/from16 v24, v11

    .line 326
    .line 327
    iget-object v11, v8, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    .line 328
    .line 329
    invoke-interface {v5, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    cmpl-float v5, v5, v17

    .line 334
    .line 335
    if-nez v5, :cond_9

    .line 336
    .line 337
    invoke-interface {v11, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    cmpl-float v5, v5, v17

    .line 342
    .line 343
    if-nez v5, :cond_9

    .line 344
    .line 345
    invoke-interface {v9, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    cmpl-float v5, v5, v17

    .line 350
    .line 351
    if-nez v5, :cond_9

    .line 352
    .line 353
    invoke-interface {v6, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    cmpl-float v3, v3, v17

    .line 358
    .line 359
    if-eqz v3, :cond_8

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_8
    move-object v3, v12

    .line 363
    goto :goto_9

    .line 364
    :cond_9
    :goto_8
    move-object v3, v8

    .line 365
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->g()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    iget-object v5, v8, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 370
    .line 371
    iget-object v8, v12, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 372
    .line 373
    invoke-virtual {v1, v5, v8}, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    iput-object v5, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/CornerSize;

    .line 378
    .line 379
    iget-object v5, v12, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    .line 380
    .line 381
    invoke-virtual {v1, v11, v5}, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    iput-object v5, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/CornerSize;

    .line 386
    .line 387
    iget-object v5, v12, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    .line 388
    .line 389
    invoke-virtual {v1, v6, v5}, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    iput-object v5, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/CornerSize;

    .line 394
    .line 395
    iget-object v5, v12, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    .line 396
    .line 397
    invoke-virtual {v1, v9, v5}, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iput-object v1, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/CornerSize;

    .line 402
    .line 403
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    :goto_a
    iput-object v3, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 408
    .line 409
    const/16 v21, 0x0

    .line 410
    .line 411
    const/16 v18, 0x0

    .line 412
    .line 413
    const/high16 v19, 0x3f800000    # 1.0f

    .line 414
    .line 415
    move-object/from16 v17, v3

    .line 416
    .line 417
    move-object/from16 v20, v10

    .line 418
    .line 419
    move-object/from16 v22, v15

    .line 420
    .line 421
    invoke-virtual/range {v16 .. v22}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Lcom/google/android/material/shape/ShapeAppearanceModel;[FFLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 422
    .line 423
    .line 424
    move-object/from16 v1, v22

    .line 425
    .line 426
    iget-object v3, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->e:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 427
    .line 428
    move-object/from16 v17, v3

    .line 429
    .line 430
    move-object/from16 v20, v4

    .line 431
    .line 432
    move-object/from16 v22, v13

    .line 433
    .line 434
    invoke-virtual/range {v16 .. v22}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Lcom/google/android/material/shape/ShapeAppearanceModel;[FFLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 435
    .line 436
    .line 437
    move-object/from16 v3, v22

    .line 438
    .line 439
    iget-object v4, v7, Lcom/google/android/material/transition/platform/MaskEvaluator;->a:Landroid/graphics/Path;

    .line 440
    .line 441
    sget-object v5, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 442
    .line 443
    invoke-virtual {v4, v1, v3, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 444
    .line 445
    .line 446
    iget v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->d:F

    .line 447
    .line 448
    iget v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->h:F

    .line 449
    .line 450
    invoke-static {v1, v3, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->c(FFF)F

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    iput v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->E:F

    .line 455
    .line 456
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->D:Landroid/graphics/RectF;

    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    iget v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->s:F

    .line 463
    .line 464
    div-float v3, v3, v23

    .line 465
    .line 466
    div-float/2addr v1, v3

    .line 467
    sub-float v1, v1, v24

    .line 468
    .line 469
    const v3, 0x3e99999a    # 0.3f

    .line 470
    .line 471
    .line 472
    mul-float/2addr v1, v3

    .line 473
    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->D:Landroid/graphics/RectF;

    .line 474
    .line 475
    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->t:F

    .line 476
    .line 477
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    div-float/2addr v3, v4

    .line 482
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 483
    .line 484
    mul-float/2addr v3, v4

    .line 485
    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->E:F

    .line 486
    .line 487
    mul-float/2addr v1, v4

    .line 488
    float-to-int v1, v1

    .line 489
    int-to-float v1, v1

    .line 490
    mul-float/2addr v3, v4

    .line 491
    float-to-int v3, v3

    .line 492
    int-to-float v3, v3

    .line 493
    iget-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->l:Landroid/graphics/Paint;

    .line 494
    .line 495
    const/high16 v6, 0x2d000000

    .line 496
    .line 497
    invoke-virtual {v5, v4, v1, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 498
    .line 499
    .line 500
    iget v1, v14, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->a:F

    .line 501
    .line 502
    iget v3, v14, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->b:F

    .line 503
    .line 504
    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->z:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 505
    .line 506
    invoke-interface {v4, v2, v1, v3}, Lcom/google/android/material/transition/platform/FadeModeEvaluator;->a(FFF)Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    iput-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 511
    .line 512
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->j:Landroid/graphics/Paint;

    .line 513
    .line 514
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_a

    .line 519
    .line 520
    iget-object v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 521
    .line 522
    iget v2, v2, Lcom/google/android/material/transition/platform/FadeModeResult;->a:I

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 525
    .line 526
    .line 527
    :cond_a
    iget-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->k:Landroid/graphics/Paint;

    .line 528
    .line 529
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_b

    .line 534
    .line 535
    iget-object v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 536
    .line 537
    iget v2, v2, Lcom/google/android/material/transition/platform/FadeModeResult;->b:I

    .line 538
    .line 539
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 540
    .line 541
    .line 542
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 543
    .line 544
    .line 545
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->n:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaskEvaluator;->a:Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->i:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->B:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->c:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->b(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->a(Landroid/graphics/Canvas;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->a(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->b(Landroid/graphics/Canvas;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Setting alpha on is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Setting a color filter is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
