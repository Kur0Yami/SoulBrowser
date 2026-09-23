.class Lcom/mycompany/app/web/WebViewActivity$573;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$573;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZZZZZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$573;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p4, p3, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p4, p2}, Lcom/mycompany/app/web/WebNestView;->setEnableJs(Z)V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-eqz p5, :cond_2

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/mycompany/app/web/WebViewActivity;->F6()V

    .line 16
    .line 17
    .line 18
    :cond_2
    :goto_0
    return-void
.end method
