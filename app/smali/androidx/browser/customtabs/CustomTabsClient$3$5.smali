.class Landroidx/browser/customtabs/CustomTabsClient$3$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Z

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Landroidx/browser/customtabs/CustomTabsClient$3;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->i:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 5
    .line 6
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->f:Landroid/net/Uri;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->g:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->h:Landroid/os/Bundle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->i:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->g:Z

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->h:Landroid/os/Bundle;

    .line 8
    .line 9
    iget v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->c:I

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$5;->f:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->i(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
