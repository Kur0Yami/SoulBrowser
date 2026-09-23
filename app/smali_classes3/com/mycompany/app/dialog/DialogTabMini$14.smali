.class Lcom/mycompany/app/dialog/DialogTabMini$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$14;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$14;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
