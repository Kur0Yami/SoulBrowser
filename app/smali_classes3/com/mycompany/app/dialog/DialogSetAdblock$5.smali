.class Lcom/mycompany/app/dialog/DialogSetAdblock$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetAdblock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAdblock$5;->c:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAdblock$5;->c:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->s0:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAdblock;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
