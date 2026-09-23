.class Lcom/mycompany/app/web/WebViewActivity$364$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$364;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$364;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$364$3;->c:Lcom/mycompany/app/web/WebViewActivity$364;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$364$3;->c:Lcom/mycompany/app/web/WebViewActivity$364;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$364;->f:Lcom/mycompany/app/web/WebViewActivity;

    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->al:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->bl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    if-eqz v0, :cond_0

    sget v0, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->H9(JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
