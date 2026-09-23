.class Lcom/mycompany/app/main/image/MainImageQuick$31;
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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$31;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$31;->c:Lcom/mycompany/app/main/image/MainImageQuick;

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
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    :goto_0
    const/4 v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 34
    :goto_1
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->e2:Z

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :goto_2
    return-void

    .line 41
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$31$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$31$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$31;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method
