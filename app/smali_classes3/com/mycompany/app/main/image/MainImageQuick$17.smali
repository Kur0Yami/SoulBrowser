.class Lcom/mycompany/app/main/image/MainImageQuick$17;
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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$17;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$17;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x4

    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$17$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$17$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$17;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
