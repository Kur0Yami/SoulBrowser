.class public Lcom/mycompany/app/dialog/DialogEditorErase;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyLineFrame;

.field public e0:Lcom/mycompany/app/view/MyCircleView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroid/widget/SeekBar;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyLineText;

.field public l0:I

.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V
    .locals 0

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
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/pref/PrefRead;->T:I

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    if-lt p1, p2, :cond_0

    .line 19
    .line 20
    const/16 p2, 0x28

    .line 21
    .line 22
    if-le p1, p2, :cond_1

    .line 23
    .line 24
    :cond_0
    const/16 p1, 0xa

    .line 25
    .line 26
    sput p1, Lcom/mycompany/app/pref/PrefRead;->T:I

    .line 27
    .line 28
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefRead;->T:I

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditorErase$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditorErase$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditorErase;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

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
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->m0:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->m0:Z

    .line 20
    .line 21
    iput v1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCircleView;->setSize(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorErase$8;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/dialog/DialogEditorErase$8;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;I)V

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
.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyCircleView;->c:Z

    .line 33
    .line 34
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->f:Landroid/content/Context;

    .line 35
    .line 36
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 37
    .line 38
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 39
    .line 40
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 41
    .line 42
    iput-object v2, v1, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 43
    .line 44
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 82
    .line 83
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
