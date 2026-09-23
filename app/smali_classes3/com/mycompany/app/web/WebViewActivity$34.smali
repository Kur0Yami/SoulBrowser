.class Lcom/mycompany/app/web/WebViewActivity$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$34;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$34;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Bb:Landroidx/mediarouter/app/MediaRouteButton;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Bb:Landroidx/mediarouter/app/MediaRouteButton;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Bb:Landroidx/mediarouter/app/MediaRouteButton;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;-><init>(Landroid/app/Activity;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 27
    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->introducing_cast:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->d:Ljava/lang/String;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$color;->cast_overlay:I

    .line 38
    .line 39
    iget-object v3, v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->a:Landroid/app/Activity;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->c:I

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    iput-boolean v2, v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->f:Z

    .line 53
    .line 54
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$34$1;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$34$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$34;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, v1, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->e:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 60
    .line 61
    sget-object v2, Lcom/google/android/gms/internal/cast/zzpm;->x:Lcom/google/android/gms/internal/cast/zzpm;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/cast/zzbk;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/cast/zzbk;-><init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Eb:Lcom/google/android/gms/internal/cast/zzbk;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzbk;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
