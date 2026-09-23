.class Landroidx/browser/customtabs/CustomTabsClient$3$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic f:Landroidx/browser/customtabs/CustomTabsClient$3;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->f:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->c:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->f:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$9;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->f(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
