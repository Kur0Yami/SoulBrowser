.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field public final c:Landroidx/fragment/app/FragmentActivity;

.field public final f:Landroidx/fragment/app/FragmentActivity;

.field public final g:Landroid/os/Handler;

.field public final h:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    .line 11
    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/fragment/app/FragmentHostCallback;->h:Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->c:Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->f:Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->g:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public b(I)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e()Landroidx/fragment/app/FragmentActivity;
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->f:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method
