.class Lcom/mycompany/app/web/WebViewActivity$376;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->N3()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->sl:Z

    .line 12
    .line 13
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$381;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lcom/mycompany/app/web/WebViewActivity$381;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    sget p2, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->N3()V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$376$1;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$376$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$376;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
