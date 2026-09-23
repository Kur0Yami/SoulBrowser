.class Lcom/mycompany/app/main/image/MainImageQuick$15;
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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$15;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$15;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->a2:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->a2:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->t1(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->b2:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->t1(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->c2:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 27
    .line 28
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->s1(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->d2:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$15$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$15$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$15;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
