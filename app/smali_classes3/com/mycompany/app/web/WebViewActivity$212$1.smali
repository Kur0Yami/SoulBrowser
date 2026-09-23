.class Lcom/mycompany/app/web/WebViewActivity$212$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$212;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$212;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$212$1;->a:Lcom/mycompany/app/web/WebViewActivity$212;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$212$1;->a:Lcom/mycompany/app/web/WebViewActivity$212;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$212;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Ub:Lcom/mycompany/app/main/MainScriptSvc;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainScriptSvc;->d()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Ub:Lcom/mycompany/app/main/MainScriptSvc;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
