.class Lcom/mycompany/app/web/WebShortTab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebShortTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebShortTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebShortTab$1;->c:Lcom/mycompany/app/web/WebShortTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "short_new_tab"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/web/WebShortTab$1;->c:Lcom/mycompany/app/web/WebShortTab;

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/web/WebShortcut;->u0(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
