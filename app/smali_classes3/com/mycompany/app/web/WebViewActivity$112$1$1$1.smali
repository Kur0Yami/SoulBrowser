.class Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$112$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$112$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$112$1;->c:Lcom/mycompany/app/web/WebViewActivity$112;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$112;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->mf:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->nf:Lcom/mycompany/app/web/WebNestFrame;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v1, v3, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->Q8(Lcom/mycompany/app/web/WebNestFrame;Lcom/mycompany/app/web/WebNestView;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112$1;->c:Lcom/mycompany/app/web/WebViewActivity$112;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
