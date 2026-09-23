.class Lcom/mycompany/app/web/WebViewActivity$191$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$191;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$191;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$191$1;->c:Lcom/mycompany/app/web/WebViewActivity$191;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$191$1;->c:Lcom/mycompany/app/web/WebViewActivity$191;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$191;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->a4:Lcom/mycompany/app/view/MyIconView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->q1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
