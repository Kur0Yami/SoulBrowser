.class Lcom/mycompany/app/image/ImageGifView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageGifView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageGifView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView$1;->a:Lcom/mycompany/app/image/ImageGifView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView$1;->a:Lcom/mycompany/app/image/ImageGifView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/image/ImageGifView;->C:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
