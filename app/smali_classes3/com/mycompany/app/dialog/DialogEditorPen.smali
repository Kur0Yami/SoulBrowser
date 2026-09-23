.class public Lcom/mycompany/app/dialog/DialogEditorPen;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final w0:[I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyCircleView;

.field public e0:Lcom/mycompany/app/view/MyCircleView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/widget/SeekBar;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroid/widget/SeekBar;

.field public l0:Lcom/mycompany/app/view/MyButtonImage;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:[Lcom/mycompany/app/view/MyButtonCheck;

.field public o0:Lcom/mycompany/app/view/MyPaletteView;

.field public p0:Lcom/mycompany/app/view/MyLineText;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:F

.field public u0:Z

.field public v0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 4
    .line 5
    move v2, v1

    .line 6
    move v3, v0

    .line 7
    move v4, v0

    .line 8
    move v5, v1

    .line 9
    move v6, v1

    .line 10
    move v7, v1

    .line 11
    filled-new-array/range {v0 .. v7}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/mycompany/app/dialog/DialogEditorPen;->w0:[I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 14
    .line 15
    sget p2, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-lt p2, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x28

    .line 21
    .line 22
    if-le p2, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/16 p2, 0xa

    .line 25
    .line 26
    sput p2, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 27
    .line 28
    :cond_1
    sget p2, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 29
    .line 30
    if-ltz p2, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x5a

    .line 33
    .line 34
    if-le p2, v0, :cond_3

    .line 35
    .line 36
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 37
    .line 38
    :cond_3
    sget p1, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 39
    .line 40
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 41
    .line 42
    sget p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 43
    .line 44
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 45
    .line 46
    sget p1, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 47
    .line 48
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 49
    .line 50
    sget p1, Lcom/mycompany/app/pref/PrefRead;->S:F

    .line 51
    .line 52
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->t0:F

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditorPen$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditorPen$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditorPen;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->v0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->v0:Z

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 22
    .line 23
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/view/MyCircleView;->b(II)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 29
    .line 30
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 31
    .line 32
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyCircleView;->b(II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 45
    .line 46
    const-string v3, "%"

    .line 47
    .line 48
    invoke-static {v1, v2, v3, v0}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorPen$14;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/dialog/DialogEditorPen$14;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogEditorPen;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->u0:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->u0:Z

    .line 20
    .line 21
    iput v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCircleView;->setSize(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorPen$13;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/dialog/DialogEditorPen$13;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 11
    .line 12
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyCircleView;->b(II)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 18
    .line 19
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 20
    .line 21
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyCircleView;->b(II)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_2

    .line 32
    .line 33
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 34
    .line 35
    sget-object v4, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 36
    .line 37
    aget v4, v4, v2

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 43
    .line 44
    aget-object v3, v3, v2

    .line 45
    .line 46
    invoke-virtual {v3, v5, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 51
    .line 52
    aget-object v3, v3, v2

    .line 53
    .line 54
    invoke-virtual {v3, v1, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_2
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyCircleView;->c:Z

    .line 24
    .line 25
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->f:Landroid/content/Context;

    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 28
    .line 29
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 36
    .line 37
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyCircleView;->c:Z

    .line 42
    .line 43
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->f:Landroid/content/Context;

    .line 44
    .line 45
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 46
    .line 47
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 48
    .line 49
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 50
    .line 51
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 54
    .line 55
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 92
    .line 93
    if-eqz v1, :cond_a

    .line 94
    .line 95
    array-length v1, v1

    .line 96
    :goto_0
    if-ge v0, v1, :cond_9

    .line 97
    .line 98
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 99
    .line 100
    aget-object v3, v3, v0

    .line 101
    .line 102
    if-eqz v3, :cond_8

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 108
    .line 109
    aput-object v2, v3, v0

    .line 110
    .line 111
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 115
    .line 116
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 117
    .line 118
    if-eqz v0, :cond_b

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPaletteView;->a()V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 124
    .line 125
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 126
    .line 127
    if-eqz v0, :cond_c

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 130
    .line 131
    .line 132
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 133
    .line 134
    :cond_c
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

    .line 135
    .line 136
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 137
    .line 138
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 141
    .line 142
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 145
    .line 146
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 147
    .line 148
    .line 149
    return-void
.end method
