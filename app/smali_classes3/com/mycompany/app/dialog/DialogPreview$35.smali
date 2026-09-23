.class Lcom/mycompany/app/dialog/DialogPreview$35;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$35;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$35;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->i(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v2
.end method
