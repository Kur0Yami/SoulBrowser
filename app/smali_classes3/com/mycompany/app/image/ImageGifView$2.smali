.class Lcom/mycompany/app/image/ImageGifView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyImageView$DrawFailListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView$2;->a:Lcom/mycompany/app/image/ImageGifView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView$2;->a:Lcom/mycompany/app/image/ImageGifView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageGifView;->z:Lcom/mycompany/app/image/ImageGifView$GifListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/mycompany/app/image/ImageGifView$GifListener;->c(Lcom/mycompany/app/view/MyImageView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
