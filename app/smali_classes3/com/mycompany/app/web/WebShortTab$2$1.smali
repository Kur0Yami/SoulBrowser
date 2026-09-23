.class Lcom/mycompany/app/web/WebShortTab$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebShortTab$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebShortTab$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebShortTab$2$1;->c:Lcom/mycompany/app/web/WebShortTab$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebShortTab$2$1;->c:Lcom/mycompany/app/web/WebShortTab$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebShortTab$2;->c:Lcom/mycompany/app/web/WebShortTab;

    .line 4
    .line 5
    const-string v1, "short_new_tab"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/web/WebShortcut;->u0(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
