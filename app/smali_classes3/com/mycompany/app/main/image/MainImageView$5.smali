.class Lcom/mycompany/app/main/image/MainImageView$5;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$5;->a:Lcom/mycompany/app/main/image/MainImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/main/image/MainImageView;->S:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$5;->a:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageView;->p()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$5;->a:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p3, p1, Lcom/mycompany/app/main/image/MainImageView;->N:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    new-instance p1, Lcom/mycompany/app/main/image/MainImageView$5$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/image/MainImageView$5$1;-><init>(Lcom/mycompany/app/main/image/MainImageView$5;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
