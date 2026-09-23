.class Lcom/mycompany/app/main/image/MainImageQuick$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/image/MainImageView$MainImageListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$4;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick$4;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 11
    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->L1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->E1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$20;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/image/MainImageQuick$20;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void

    .line 42
    :cond_4
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->L1:Z

    .line 44
    .line 45
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method
