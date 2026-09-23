.class Lcom/mycompany/app/web/WebViewActivity$621;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$621;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$621;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L3()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Kn:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ln:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Mn:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$621;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->fb:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->Y0(Lcom/mycompany/app/web/WebViewActivity;I)V

    .line 10
    .line 11
    .line 12
    return v1
.end method
