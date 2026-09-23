.class Lcom/mycompany/app/dialog/DialogCapture$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$9;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final C(Landroid/graphics/RectF;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogCapture$9;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyAreaView;->setRect2(Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p2, 0x4

    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final D(Landroid/view/MotionEvent;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final t()V
    .locals 0

    .line 1
    return-void
.end method
