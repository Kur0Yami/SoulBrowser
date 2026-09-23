.class Lcom/mycompany/app/web/WebShortcut$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebShortcut;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebShortcut;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebShortcut$1;->c:Lcom/mycompany/app/web/WebShortcut;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebShortcut$1;->c:Lcom/mycompany/app/web/WebShortcut;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebShortcut;->f1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/web/WebShortcut;->u0(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
