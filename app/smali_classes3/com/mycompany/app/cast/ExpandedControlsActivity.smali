.class public Lcom/mycompany/app/cast/ExpandedControlsActivity;
.super Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->C7(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lnet/kaki87/soul2/testing/R$menu;->expanded_controller:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lnet/kaki87/soul2/testing/R$id;->media_route_menu_item:I

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v1, "Must be called from the main thread."

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->b(Lcom/mycompany/app/cast/ExpandedControlsActivity;Landroid/view/MenuItem;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/google/android/gms/cast/framework/CastButtonFactory;->b:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    sget-object v2, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->M:Lcom/google/android/gms/internal/cast/zzpm;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 62
    .line 63
    const-string v2, "menu item with ID "

    .line 64
    .line 65
    const-string v3, " doesn\'t have a MediaRouteActionProvider."

    .line 66
    .line 67
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 78
    .line 79
    const-string v1, "menu doesn\'t contain a menu item whose ID is "

    .line 80
    .line 81
    const-string v2, "."

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method
