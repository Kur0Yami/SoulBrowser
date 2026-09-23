.class Lcom/mycompany/app/web/WebViewActivity$301$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity$301;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$301;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$301$1;->f:Lcom/mycompany/app/web/WebViewActivity$301;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$301$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$301$1;->f:Lcom/mycompany/app/web/WebViewActivity$301;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$301;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->sj:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->sj:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/mycompany/app/web/WebViewActivity$301$1;->c:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->M9(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v4, 0x1

    .line 19
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->O1:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v3, v2, v4, v3}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$301;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->O1:Z

    .line 28
    .line 29
    return-void
.end method
