.class Lcom/mycompany/app/web/WebViewActivity$138$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$138$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$138$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    const/4 v6, 0x1

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-wide v4, p5

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->L0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
