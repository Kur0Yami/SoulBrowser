.class Lcom/mycompany/app/dialog/DialogSeekFilter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$7;->a:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->m0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$7;->a:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekFilter;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->c0:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    xor-int/2addr v2, v3

    .line 17
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eq v4, v2, :cond_1

    .line 21
    .line 22
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v5

    .line 27
    :goto_0
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 28
    .line 29
    const/4 v6, 0x6

    .line 30
    if-eq v4, v6, :cond_2

    .line 31
    .line 32
    iput v6, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v3, v2

    .line 36
    :goto_1
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekFilter;->B()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {v0, v5}, Lcom/mycompany/app/dialog/DialogSeekFilter;->D(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
