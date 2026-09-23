.class Lcom/mycompany/app/main/image/MainImageQuick$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$20;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$20;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->Z0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 24
    .line 25
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$21;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$21;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$22;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$22;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    sget v0, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 53
    .line 54
    return-void
.end method
