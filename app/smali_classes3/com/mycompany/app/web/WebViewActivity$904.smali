.class Lcom/mycompany/app/web/WebViewActivity$904;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$904;->c:Lcom/mycompany/app/web/WebViewActivity;

    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$904;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$904;->d:Landroid/view/View;

    if-eqz v0, :cond_anchor

    goto :goto_click

    :cond_anchor
    move-object v0, p1

    :goto_click
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$904;->c:Lcom/mycompany/app/web/WebViewActivity;

    invoke-static {p1, v0}, Lcom/mycompany/app/web/WebViewActivity;->D1edit(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    return-void
.end method
