.class Lcom/mycompany/app/web/WebViewActivity$305;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$305;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$305;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->a5()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_o0

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$305;->a:Lcom/mycompany/app/web/WebViewActivity;

    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->U5edit(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_o0
    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$305;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->O0(Lcom/mycompany/app/web/WebViewActivity;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
