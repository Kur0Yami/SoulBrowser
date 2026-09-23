.class public Lcom/mycompany/app/dialog/DialogWebCerti;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;,
        Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;,
        Lcom/mycompany/app/dialog/DialogWebCerti$CertiHolder;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Landroid/webkit/WebView;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRecyclerView;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

.field public g0:Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;

.field public h0:Z

.field public i0:I

.field public j0:I

.field public k0:Landroid/view/GestureDetector;

.field public l0:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->b0:Landroid/webkit/WebView;

    .line 11
    .line 12
    const/16 p1, 0x64

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->j0:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebCerti$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebCerti$1;-><init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final B(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, 0x1f4

    .line 16
    .line 17
    if-le p1, v0, :cond_2

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 20
    .line 21
    :cond_2
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->j0:I

    .line 22
    .line 23
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 24
    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->j0:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_1
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->g0:Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->g0:Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->e:I

    .line 55
    .line 56
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;->d:Ljava/util/List;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 59
    .line 60
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->b0:Landroid/webkit/WebView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->k0:Landroid/view/GestureDetector;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->l0:Landroid/view/ScaleGestureDetector;

    .line 67
    .line 68
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->k0:Landroid/view/GestureDetector;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti;->l0:Landroid/view/ScaleGestureDetector;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method
