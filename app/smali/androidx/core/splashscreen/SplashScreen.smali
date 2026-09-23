.class public final Landroidx/core/splashscreen/SplashScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/splashscreen/SplashScreen$Companion;,
        Landroidx/core/splashscreen/SplashScreen$Impl;,
        Landroidx/core/splashscreen/SplashScreen$Impl31;,
        Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;,
        Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/core/splashscreen/SplashScreen;",
        "",
        "Companion",
        "OnExitAnimationListener",
        "KeepOnScreenCondition",
        "Impl",
        "Impl31",
        "core-splashscreen_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/core/splashscreen/SplashScreen$Impl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/core/splashscreen/SplashScreen$Impl31;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/core/splashscreen/SplashScreen$Impl31;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroidx/core/splashscreen/SplashScreen$Impl;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroidx/core/splashscreen/SplashScreen$Impl;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iput-object v0, p0, Landroidx/core/splashscreen/SplashScreen;->a:Landroidx/core/splashscreen/SplashScreen$Impl;

    .line 22
    .line 23
    return-void
.end method

.method public static final a(Lcom/mycompany/app/main/MainActivity;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/core/splashscreen/SplashScreen;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/core/splashscreen/SplashScreen;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v0, Landroidx/core/splashscreen/SplashScreen;->a:Landroidx/core/splashscreen/SplashScreen$Impl;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreen$Impl;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
