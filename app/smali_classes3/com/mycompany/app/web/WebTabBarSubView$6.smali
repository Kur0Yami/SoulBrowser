.class Lcom/mycompany/app/web/WebTabBarSubView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebTabBarSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$6;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$6;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->z6()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    return-void
.end method
