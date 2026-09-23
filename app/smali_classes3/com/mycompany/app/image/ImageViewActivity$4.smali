.class Lcom/mycompany/app/image/ImageViewActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->g:Lcom/mycompany/app/image/ImageViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->g:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v2, 0x5

    .line 26
    iget v3, p0, Lcom/mycompany/app/image/ImageViewActivity$4;->f:I

    .line 27
    .line 28
    if-ne v3, v2, :cond_2

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 v2, 0x4

    .line 37
    if-ne v3, v2, :cond_4

    .line 38
    .line 39
    const-string v2, "live"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    sget v1, Lnet/kaki87/soul2/testing/R$string;->live_fail:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 51
    .line 52
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
