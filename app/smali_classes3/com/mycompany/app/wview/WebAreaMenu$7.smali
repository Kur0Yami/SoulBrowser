.class Lcom/mycompany/app/wview/WebAreaMenu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$7;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaMenu$7;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v1, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 10
    .line 11
    return-void
.end method
