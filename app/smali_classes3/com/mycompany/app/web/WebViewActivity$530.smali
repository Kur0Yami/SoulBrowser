.class Lcom/mycompany/app/web/WebViewActivity$530;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$TabViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$530;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$530$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$530$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$530;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$530;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
