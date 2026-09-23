.class Lcom/mycompany/app/image/ImageViewPageEffect$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$21;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$21;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$21$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$21$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$21;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
