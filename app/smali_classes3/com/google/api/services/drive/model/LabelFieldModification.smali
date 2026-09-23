.class public final Lcom/google/api/services/drive/model/LabelFieldModification;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private fieldId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private setDateValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private setIntegerValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private setSelectionValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private setTextValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private setUserValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unsetValues:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/LabelFieldModification;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object v0

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->fieldId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetDateValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setDateValues:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetIntegerValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setIntegerValues:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetSelectionValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setSelectionValues:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetTextValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setTextValues:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetUserValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setUserValues:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnsetValues()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->unsetValues:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelFieldModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelFieldModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/LabelFieldModification;

    return-object p1
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->fieldId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSetDateValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setDateValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSetIntegerValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setIntegerValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSetSelectionValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setSelectionValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSetTextValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setTextValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSetUserValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setUserValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUnsetValues(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->unsetValues:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method
