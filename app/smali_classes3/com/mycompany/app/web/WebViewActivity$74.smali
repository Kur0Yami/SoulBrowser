.class Lcom/mycompany/app/web/WebViewActivity$74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyBarView$BarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$74;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$74;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/mycompany/app/web/WebViewActivity;->p2:Lcom/mycompany/app/view/MyBarView;

    .line 4
    .line 5
    invoke-static {p3, v0, p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->U0(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/view/MyBarView;Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
