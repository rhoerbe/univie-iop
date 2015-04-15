<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2015r3sp1

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="xs fn">
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:template match="/">
		<lectureindex>
			<xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'Z:/u/IOP2015/rhoerbe/univie-iop/Uebung2/vlz_kap_706_clean_edit.xsd'"/>
			<xsl:for-each select="course">
				<study>
					<xsl:attribute name="id" select="fn:string(@id)"/>
					<xsl:attribute name="name" select="fn:string(name)"/>
					<xsl:for-each select="moduleclass">
						<modulegroup>
							<xsl:attribute name="id" select="fn:string(@id)"/>
							<xsl:attribute name="name" select="fn:string(@name)"/>
							<xsl:for-each select="modulegroup">
								<modulesubgroup>
									<xsl:attribute name="id" select="fn:string(@id)"/>
									<xsl:attribute name="name" select="fn:string(@name)"/>
									<xsl:for-each select="module">
										<module>
											<xsl:attribute name="id" select="fn:string(@id)"/>
											<xsl:attribute name="name" select="fn:string(@name)"/>
											<xsl:for-each select="lecture">
												<course>
													<xsl:attribute name="ects" select="fn:string(@ects)"/>
													<xsl:attribute name="id" select="xs:string(xs:integer(fn:string(@id)))"/>
													<xsl:attribute name="title" select="fn:string(@title)"/>
													<xsl:attribute name="type" select="fn:string(@type)"/>
													<xsl:for-each select="group">
														<group>
															<xsl:attribute name="block" select="fn:string(@block)"/>
															<xsl:attribute name="id" select="xs:string(xs:integer(fn:string(@id)))"/>
															<xsl:attribute name="livestream" select="fn:string(@livestream)"/>
															<xsl:attribute name="signlanguage" select="fn:string(@signLanguage)"/>
															<appointments>
																<xsl:for-each select="duration">
																	<appointment>
																		<xsl:attribute name="date" select="fn:string(@date)"/>
																		<xsl:attribute name="end" select="xs:string(xs:integer(fn:string(@end)))"/>
																		<xsl:attribute name="room" select="fn:string(@room)"/>
																		<xsl:attribute name="street" select="fn:string(@street)"/>
																		<xsl:attribute name="zip" select="xs:string(xs:integer(fn:string(@zip)))"/>
																	</appointment>
																</xsl:for-each>
															</appointments>
															<lecturers>
																<xsl:for-each select="lecturer">
																	<lecturer>
																		<xsl:attribute name="givenname" select="fn:string(@firstname)"/>
																		<xsl:attribute name="role" select="fn:string(@rolePerson)"/>
																		<xsl:attribute name="surname" select="fn:string(@lastname)"/>
																	</lecturer>
																</xsl:for-each>
															</lecturers>
														</group>
													</xsl:for-each>
												</course>
											</xsl:for-each>
										</module>
									</xsl:for-each>
								</modulesubgroup>
							</xsl:for-each>
						</modulegroup>
					</xsl:for-each>
				</study>
			</xsl:for-each>
		</lectureindex>
	</xsl:template>
</xsl:stylesheet>