.class Lcom/mycompany/app/image/ImageViewPageScroll$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$77;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$77;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "mOcrZoom"

    .line 14
    .line 15
    invoke-static {v0, v1, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
