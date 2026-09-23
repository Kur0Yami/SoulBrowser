.class Lcom/mycompany/app/main/image/MainImageQuick$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$2;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    if-le p2, p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageQuick$2;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 7
    .line 8
    iput-boolean p1, p2, Lcom/mycompany/app/main/image/MainImageQuick;->G1:Z

    .line 9
    .line 10
    iget-object p1, p2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/image/MainImageQuick$2$1;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/image/MainImageQuick$2$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$2;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
