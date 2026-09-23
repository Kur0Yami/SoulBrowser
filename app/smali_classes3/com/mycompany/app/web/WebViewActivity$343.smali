.class Lcom/mycompany/app/web/WebViewActivity$343;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$343;->a:Lcom/mycompany/app/web/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$343;->a:Lcom/mycompany/app/web/WebViewActivity;

    # Keep page Preview open; menu actions apply without dismissing c7.
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/web/WebViewActivity;->g6(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 4

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$343;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainConst;->d:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    move-result v0

    return v0

    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E0(Landroid/app/Activity;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, v0, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    return v0
.end method

.method public final c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 8

    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$343;->a:Lcom/mycompany/app/web/WebViewActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->f6(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$343;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->xo:Ljava/lang/String;

    return-object v0
.end method
