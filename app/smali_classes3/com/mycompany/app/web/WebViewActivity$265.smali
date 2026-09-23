.class Lcom/mycompany/app/web/WebViewActivity$265;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$265;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$265;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$265;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/web/WebViewActivity$265;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$265;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$265;->c:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$265;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->gk:Ljava/util/List;

    .line 17
    .line 18
    iget v1, p0, Lcom/mycompany/app/web/WebViewActivity$265;->g:I

    .line 19
    .line 20
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->hk:I

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    const/4 v6, 0x5

    .line 25
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$265;->f:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v3, "video/*"

    .line 29
    .line 30
    move-object v7, v1

    .line 31
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :goto_0
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_down_video:I

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
