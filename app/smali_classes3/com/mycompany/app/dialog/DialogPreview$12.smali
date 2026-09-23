.class Lcom/mycompany/app/dialog/DialogPreview$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$12;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$12;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mycompany/app/video/VideoActivity;->Z0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$13;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$13;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$14;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$14;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void

    .line 54
    :cond_3
    sget v0, Lcom/mycompany/app/dialog/DialogPreview;->j1:I

    .line 55
    .line 56
    return-void
.end method
