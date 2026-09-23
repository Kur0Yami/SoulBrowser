.class Lcom/mycompany/app/dialog/DialogMenuList$18;
.super Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$18;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$18;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogMenuList;->b()Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
