.class Lcom/mycompany/app/web/WebViewActivity$159;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$159;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$159;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ag:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Bg:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ag:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Bg:Lcom/mycompany/app/web/WebNestFrame;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->P9(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
