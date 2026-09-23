.class Lcom/mycompany/app/dialog/DialogWebCerti$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebCerti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$5;->c:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$5;->c:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    iget v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 15
    .line 16
    const/16 v2, 0x5a

    .line 17
    .line 18
    if-le v0, v2, :cond_2

    .line 19
    .line 20
    const/16 v2, 0x6e

    .line 21
    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    const/16 v0, 0xc8

    .line 25
    .line 26
    iput v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/16 v0, 0x64

    .line 30
    .line 31
    iput v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 32
    .line 33
    :goto_1
    iget v0, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogWebCerti;->B(I)V

    .line 36
    .line 37
    .line 38
    return v1
.end method
